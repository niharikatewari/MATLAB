%Steepest descent method
function x = SteepestDescent()
%input 
Q =[2 1;1 2] ; b =[2;3] ;eps = 0.1; c = [4;2];

n = length(b);
x = zeros(n,1);
k = 0 ;

gf = Q * x - b;
d = gf / norm(gf);

while(norm(gf) > eps)
    C = [0.5 * (d' * Q * d)*(0.5 * d' * Q * x + 0.5 * x' * Q * d - b' * d)*(0.5 * x' * Q * x - b' * x + c)];
    alpha = - C(2)/(2*C(1));
    
    x = x + alpha * d;
    k =k + 1;
    
    gf = Q * x - b;
    d = -gf/ norm(gf);
end
fprintf('The value of x is %g', x);
end
