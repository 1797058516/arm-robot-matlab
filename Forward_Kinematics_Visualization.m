%2自由度 RR机械臂
clc
clearvars

syms theta1 theta2 

l1=1;
l2=0.5;

%DH parameters

%Link1
a1 = l1; alpha1 = 0; d1 = 0; theta1=theta1;
%Link2
a2 = l2; alpha2 = 0; d2 = 0; theta2=theta2;


H0_1=DH(a1,alpha1,d1,theta1);
H1_2=DH(a2,alpha2,d2,theta2);
H0_2=H0_1*H1_2;
simplify(H0_2);%简化式子

O1x=H0_1(1,4);
O1y=H0_1(2,4);

O2x=simplify(H0_2(1,4));
O2y=simplify(H0_2(2,4));

t=0;
dt=0.1;

xlim([-2,2])
ylim([-2,2])
for i = 1:100
    t= t +dt;
   
    theta1 = pi/5 *sin(t);
    theta2 = pi/4 *cos(t);

    %O1x=eval(O1x); O1y=eval(O1y); O2x=eval(O2x); O2y=eval(O2y);
    O1x=cos(theta1);
    O1y=sin(theta1);
    
    O2x=cos(theta1 + theta2)/2 + cos(theta1);
    O2y=sin(theta1 + theta2)/2 + sin(theta1);
    
    Link1 = line([0,O1x],[0,O1y])
    Link2 = line([O1x,O2x],[O1y,O2y])
    
    set(Link1,'lineWidth',2);
    set(Link2,'lineWidth',5);
    
    pause(0.1);
    delete(Link1)
    delete(Link2)
end

