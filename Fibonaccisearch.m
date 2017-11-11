function x = Fibonaccisearch(~,~,~,~,~)
%fibonacci series
%step 1:- input data xlo and xup ,n ,f
xlo = -5; xup = 15; n = 7; f = [0;0;1]; eps = 1.5;

%Compute fibonacci numbrs Fn and Fn-1

xpk = xup - (21/13) * (xup - xlo);
xqk = xlo - (21/13) * (xup - xlo);

k = 1;

%step 3 : Evaluate
       Epk = val(f,xpk);
       Eqk = val(f,xqk);
 i = xup - xlo;
%step 4 : 
while(i > eps)
     if(Epk <= Eqk)  %step 5
         xup = xqk;
         xqk = xpk;
         xpk = xup - (13/21) * (xup - xlo);
     else
          xlo = xpk;
         xpk = xqk;
         xqk = xlo + 13/21 * (xup - xlo);
     end
     k = k + 1;
     
     Epk = val(f,xpk);
     Eqk = val(f,xqk);
     i = xup - xlo;
end
 x = (xup + xlo) / 2;
fprintf(' The value of xlo is %g ' ,xlo );
 fprintf(' The value of xup is %g ' ,xup );
end

function x1 = val(f,a)
    for i = 1:length(f) - 1
        c(i) = f(i + 1) * a ^i;
    end
  x1 = sum(c) + f(1);
  return;
end