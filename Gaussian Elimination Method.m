clc
clear

n=input('dastgah chand moadele va chand majhul darad? (abaade matris)');
%ba in farz ke derayeye a(1,1) '0' nabashad va agar ham bud, dar paiin an
%ra barressi kardam.


a=[];

fprintf('\n\n\nderayehaye matris ra vared konid: (matrise zarayeb)');


for t=1:n
    for u=1:n
        a(t,u)=input('');
    end  
end
% disp(a);




fprintf('\n\n\nmaghadire ''b'' ( matrise adadi) ra vared konid: (matrise maghadir sabet)');
for m=1:n
  b(m,1)=input('');
    
end
%disp(b);


disp('matris afzude avvalie ');
disp('');
disp([a b]);
fprintf('\n\n\n\n');


for i=1:n-1
    
    
    %barressi 'mehvargiri jozii':
     if a(i,i)==0
        [max_in_column k]=max(abs(a(i+1:end,i)));
        a(i,:)=a(i,:)+a(i+k,:);
        b(i)=b(i)+b(i+k);
    end
    
    for j=i+1:n
        
        c=a(j,i)/a(i,i);
        a(j,:)=a(j,:)-c*a(i,:);
        b(j)=b(j)-c*b(i);
        
    end
    
end




disp('matris afzude baad az hazfi gouss:');
disp('');
disp([a b]);
disp('');
disp('javab dastgah:');


%javabe nahaii:
%'Q' haman  matrise majhulate dastgah hast.
if a(n,n)==0 && b(n,1)==0
    
    fprintf('dastgah bishomar javab darad:\n');
    
       Q=zeros(n,1);
for i=n:-1:1
    S=0;
    for j=i+1:n
        S=S+a(i,j)*Q(j);
    end
    S=b(i)-S;
    Q(i)=S/a(i,i);
end
disp(['x = ' mat2str(Q',n)]);


   
%in be natije naresid albate va majbur shodam ye jur dige beram.
% % %         Q=zeroes(n);
% % %         
% % %         for p=n-1:-1:1
% % %            for h=n:-1:p+1
% % %                Q(p,1)=(b(p,1)-a(p,h)*Q(h,1))/a(p,p);
% % %            end
% % %         end
% % %         disp([Q]);
    

elseif (a(n,n)>0 || a(n,n)<0) && b(n,1)==0
    fprintf('dastgah javab nadarad.');
else
    fprintf('dastgah  javab monhaserbefard darad:\n');
   
    Q=zeros(n,1);
for i=n:-1:1
    S=0;
    for j=i+1:n
        S=S+a(i,j)*Q(j);
    end
    S=b(i)-S;
    Q(i)=S/a(i,i);
end
disp(['x = ' mat2str(Q',n)]);


    
end
