clc
clear

a=-2;
b=1;
%chun dar loope for dar payiin,aindex k az 2 shoro mishavad,pas yek marhale
%ghabl yani c(1) ra bayad dasti anjam dahim ta baraye mohasebe
%c(k=2),meghdare c(k-1=1) ra dashte bashim va error rokh nadahad.
c(1)=(a+b)/2;

%x=f(a),y=f(b),z=f(c)
x=exp(a)-2-a;
y=exp(b)-2-b;
z=exp(c(1))-2-c(1);

fprintf('a=%d\t b=%d\t c(%d)=%d\t f(a)=%d\t f(b)=%d\t f(c)=%d\t',a,b,1,c(1),x,y,z);
fprintf('\n');

%midanim tabe be ezye -2 meghdari + va be ezaye 1 meghdari - darad.
b=c(1);

for k=2:1:40;
   
    c(k)=(a+b)/2;
    if abs(c(k)-c(k-1))>=10^(-6)
    
    
    
   
    
    x=exp(a)-2-a;
    y=exp(b)-2-b;
    z=exp(c(k))-2-c(k);
    
   
    fprintf('a=%d\t b=%d\t c(%d)=%d\t f(a)=%d\t f(b)=%d\t f(c)=%d\t',a,b,k,c(k),x,y,z);
    fprintf('\n');
    
     if z*x<0
        b=c(k);
    else
        a=c(k);
     end
    
  %dar in ghesmat ham akharin marhale ke shart payane tansif bargharar
  %mishavad,jodagane hesab mishavad ta ba anjame aan,barname payan yabad.   
    else
          fprintf('\n'); 
          %c(k+1) ham darvaghe ghable loope For mohasebe shod.
          if z*x<0
          b=c(k);
          else
          a=c(k);
          end
          
          fprintf('a=%d\t b=%d\t c(%d)=%d\t f(a)=%d\t f(b)=%d\t f(c)=%d\t',a,b,k,c(k),x,y,z);
          
          fprintf('\n\n\nc(%d)=%d is the answere.',k,c(k)); 
          break
       
   
        
    end
    
 

end
