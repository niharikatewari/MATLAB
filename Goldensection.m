function x = Goldensection(~,~,~,~)
%Golden section method
%obj function is taken of polynomial degree n
%xlo:=Lower bound of variable
%xup:=Upper bound
%eps:=epison 
%f:=coefficient starting with constant
%step1: input data xlo and xup , eps>0,f 
xlo=-5; xup=15; eps = 1.5 ; f = [0;0;1];
%step2: compute the first two trial points xpk and xqk
xpk = xup - 0.618 * (xup - xlo);
xqk = xlo + 0.618 * (xup - xlo);
k = 1;

%step 3: Evaluate the function at two trial points xpk and xqk
 Epk = val(f,xpk);
 Eqk = val(f,xqk);
 
 i = xup - xlo;
 
 %step 4:=Test the interval which contains the minimum Epk <=Eqk gotostep 5 else
 %step 6
 %Step 5:= Use following result to update
 
 while(i > eps)
     if(Epk <= Eqk)  %step 5
         xup = xqk;
         xqk = xpk;
         xpk = xup - 0.618 * (xup - xlo);
%          Epk = val(f,xpk);
%          Eqk = val(f,xqk);
         
     else   %step 6
         xlo = xpk;
         xpk = xqk;
         xqk = xlo + 0.618 * (xup - xlo);
%          Epk = val(f,xpk);
%          Eqk = val(f,xqk);
     end %step 7 :- test optimization goto 8 or else goto step 4 i< eps
     k = k + 1;
     Epk = val(f,xpk);
     Eqk = val(f,xqk);
     i = xup - xlo;
 end
 x = (xup + xlo) / 2;
 % step 8 output xlo and xup
 fprintf(' The value of xlo is %g ' ,xlo );
 fprintf(' The value of xup is %g ' ,xup );
end
    
%   function x = val(f,a)
%         c(i1) = f(i1+1) * a ^ i1;
%   end
%   x = sum(c) + y(1);
%   return;


function x1 = val(f,a)
    for i = 1:length(f) - 1
        c(i) = f(i + 1) * a ^i;
    end
  x1 = sum(c) + f(1);
  return;
end