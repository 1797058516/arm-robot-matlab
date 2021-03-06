T1=SE2(1,2,30*pi/180) %用函数se2创建一个齐次变换
axis([0 5 0 5]);
trplot2(T1,'frame','1','clore','b')
T2=SE2(2,1,0);
hold on
trplot2(T2,'frame','2','clore','r')
T3=T1*T2;
trplot2(T3,'frame','3','clore','g');
T4=T2*T1;
trplot2(T4,'frame','4','clore','c');
P=[3;2];%世界坐标系
plot_point(P,'*');
P1 = double(inv(T1)) * [P; 1];%以T1作为参考来描述P的坐标
h2e(double(inv(T1))*e2h(P));
homtrans(double(inv(T1)),P);
P2=homtrans(double(inv(T2)),P);%以T2作为参考来描述P的坐标