% function peano_curve(n)  
    %�����½ǵ����Ͻ�
    n = 5;
    peano_old=[0,0;0,1;0.5,1;0.5,0;1,0;1,1];  
    x=peano_old(:,1);  
    y=peano_old(:,2);  
    figure  
     set(gcf,'position',[0,0,1920,1080]);  %%gcf���ص�ǰFigure����ľ��ֵ
%     set(gcf,'position',[0,0,1920,200]);  %%gcf���ص�ǰFigure����ľ��ֵ
    plot(x,y)  
    axis equal  
    for i=1:n-1  
        p1=[peano_old(:,1),2+1/(3^i-1)-peano_old(:,2)];  
        p1=p1(length(p1):-1:1,:);  
        p2=[p1(:,1),4+3/(3^i-1)-p1(:,2)];  
        p2=p2(length(p2):-1:1,:);  
        peano_new=[peano_old;p1;p2];  
        p1=[2+1/(3^i-1)-peano_new(:,1),peano_new(:,2)];  
        p1=p1(length(p1):-1:1,:);  
        p2=[4+3/(3^i-1)-p1(:,1),p1(:,2)];  
        p2=p2(length(p2):-1:1,:);  
        peano_new=[peano_new;p1;p2];  
        peano_old=peano_new/(3+2/(3^i-1));  
        x=peano_old(:,1);  
        y=peano_old(:,2);  
        plot(x,y)  
        axis equal  
        pause(1)  
    end  
% end 
add = 0;
 for k = 2:4373
     if(x(k)-x(k-1))~=(x(k)-x(k+1))&&(y(k)-y(k-1))~=(y(k)-y(k+1))   
     
         add =add+1;
     end
 end
  add_y = 0;                               %%y����仯�Ĵ���
  for j = 2:4374
     if(x(j)-x(j-1))==0&&(y(j)-y(j-1))~=0  
     
         add_y =add_y+1;
     end
  end

 add_x = 0;                                 %%x����仯�Ĵ���
  for i = 2:4374
     if(x(i)-x(i-1))~=0&&(y(i)-y(i-1))==0  
         add_x =add_x+1;
     end
  end
 len1 = 4373;
 nnn=add_y/(len1+1);                       %����Y����仯�ĸ���
 nnn_n=add_x/(len1+1);                     %����X����仯�ĸ���
 H=-(nnn*(log(nnn)/log(2))+nnn_n*(log(nnn_n)/log(2))); %����X��Y������ֵ
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %  
y_y = 0;
for k = 2:4373                        %y-y����               
     if(x(k)-x(k-1))==0&&(x(k)-x(k+1))==0 
         y_y =y_y+1;
     end
end
 x_x = 0;
for k = 2:4373                        %x-x����               
     if(y(k)-y(k-1))==0&&(y(k)-y(k+1))==0 
         x_x =x_x+1;
     end
end
x_y = 0;
 for k = 2:4373                        %x-y����               
     if(x(k)-x(k-1))~=0&&(y(k)-y(k+1))~=0 
         x_y =x_y+1;
     end
 end
 y_x = 0;
 for k = 2:4373                        %y-x����               
     if(x(k)-x(k-1))==0&&(y(k)-y(k+1))==0 
         y_x =y_x+1;
     end
 end
nn1=y_y/len1;                      %����Y-Y����仯�ĸ���
nn2=y_x/len1;
nn3=x_y/len1;
nn4=x_x/len1;
% H4=-(nn1*(log(nn1)/log(4))+nn2*(log(nn2) /log(4))+nn3*(log(nn3)/log(4))+nn4*(log(nn4)/log(4)));%�����ĸ�������ֵ
H4=-(nn1*(log(nn1)/log(3))+nn2*(log(nn2)/log(3))+nn4*(log(nn3)/log(3)));%��������������ֵ