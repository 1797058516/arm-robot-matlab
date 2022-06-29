s=tpoly(0,1,50); %生成5次多项式轨迹   其值范围为0-1分50个时间步平滑变化
plot(s);  %变化曲线
[s,sd,sdd]=tpoly(0,1,50);
s=tpoly(0,1,50,0.5,0);
plot(s);  %变化曲线
s=lspb(0,1,50);  %混合曲线轨迹 
plot(s);  %变化曲线
x=mtraj(@tpoly,[0 2],[1 -1],50); %分50个时间从坐标（0，2）移动到（1，-1）
x=mtraj(@lspb,[0 2],[1 -1],50);
plot(x);
via = [4,1; 4,4; 5,2; 2,5];
q = mstraj(via,[2,1],[],[4,1],0.05,0); %多段多轴轨迹
plot(q);
q = mstraj(via,[2,1],[],[4,1],0.05,1); %增加加速度时间
plot(q);%曲线更圆滑
R0 =rotz(-1) * roty(-1);
R1 =rotz(1) * roty(1);  %两种姿态
rpy0=tr2rpy(R0);
rpy1 = tr2rpy(R1); %转换成横滚-俯仰-偏航角
rpy = mtraj(@tpoly,rpy0,rpy1,50);
tranimate(rpy2tr(rpy)); %动作变化的平滑，但是不太协调
q0=UnitQuaternion(R0);  %Quaternion错了！！！！改用UnitQuaternion
q1=UnitQuaternion(R1); %用四元数表达等价的位姿    
q = interp(q0,q1,[0:49]'/49); %进行插值
%about(q); %在命令行中查看
T0 = transl(0.4,0.2,0)*trotx(pi);
T1 = transl(-0.4,-0.2,0.3)*troty(pi/2)*trotz(-pi/2);
trinterp(T0,T1,0.5)
Ts=trinterp(T0,T1,[0:49]/49);
Ts(:,:,1)
tranimate(Ts)
P=transl(Ts); %轨迹平移部分
plot(P);%位置向量的变化
rpy=tr2rpy(Ts);
plot(rpy);%横滚-俯仰-偏航角
