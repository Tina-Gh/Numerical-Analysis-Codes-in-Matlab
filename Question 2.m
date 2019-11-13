clc 
clear
%ebteda bayad dar ghesmate 'preferences'matlab, deghat ta '11' raghame ashar
%balaa borde shavad.albate man dasture 'vpa(x(k+1),11)'ro ham zadam vali 
%natije nadad va asari rujavab nadasht pas dasti tanzimate matlabo taghir midim.
% RAVESHE NEWTON
fprintf('RAVESHE NEWTON:\n\n\n');
x(1)=1;
fprintf('x(1)=%d',x(1));

for k=1:1:100
    x(k+1)=x(k)-(x(k)*x(k)*(exp(-0.5*x(k)))-1)/(exp(-x(k)/2)*x(k)*(2-0.5*x(k)));
   % x(k+1)=vpa(x(k+1),12)
    
    if abs(x(k+1)-x(k))>=10^(-10)
        fprintf('\nx(%d)=%d',k+1,x(k+1));
    
    else
        fprintf('\nx(%d)=%d',k+1,x(k+1));
        fprintf('\n\n\nthe answere is x(%d)=%d',k+1,x(k+1));
        
        break 
    end
     
end



%RAVESHE VATARI

%dar inja ham bayad tanzimate matlabo motabeghe aanche dar bala gofte shod taghiir
%bedim.
fprintf('\n\n\nRAVESHE VATARI:\n\n\\n');
x(1)=1;
x(2)=x(1)-(exp(-x(1)/2)*x(1)*(2-0.5*x(1)))/(x(1)*x(1)*exp(-0.5*x(1))-1);
fprintf('\nx(1)=%d\nx(2)=%d',x(1),x(2));

for i=1:1:100
    x(i+2)=x(i+1)-((x(i+1)*x(i+1)*exp(-x(i+1)*0.5)-1)*(x(i+1)-x(i)))/(x(i+1)*x(i+1)*exp(-x(i+1)*0.5)-x(i)*x(i)*exp(-x(i)*0.5));
    
    if abs(x(i+2)-x(i+1))>=10^(-10)
         fprintf('\nx(%d)=%d',i+2,x(i+2));
          else
        fprintf('\nx(%d)=%d',i+2,x(i+2));
        fprintf('\n\n\nthe answere is x(%d)=%d',i+2,x(i+2));
        
        break 
    end
    

end
