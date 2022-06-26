 R=rotx(pi/2);
 %trplot(R);
 %tranimate(R);
 R1=rotx(pi/2)*roty(pi/2);
 tranimate(R1);
 %trplot(R);
 R2=roty(pi/2)*rotx(pi/2); %R1和R2的值不同，所以旋转不可交换性；
 %ZYZ欧拉角
 R3=rotz(0.1)*roty(0.2)*rotz(0.3);
 R3=eul2r(0.1,0.2,0.3);%简洁形式
 %逆命题
 gamma=tr2eul(R3);%解出来的结果和上面旋转的角度相同
 %如果转动负的角度的话
 R4=eul2r(0.1,-0.2,0.3);
 gamma1=tr2eul(R4);%解出来的角度和R4转的角度不同
 R_temp=eul2r(gamma1);%利用这个角度求出来R_temp和R4相同
 %说明旋转矩阵到欧拉角的映射是不唯一的
 R5=eul2r(0.1,0,0.3);%theta=0的情况是一个奇异点
 
 %XYZ欧拉角--横滚-俯仰角-偏航角  经常用于描述飞机和车辆和船舶
 R6=rotx(0.1)*roty(0.2)*rotz(0.3);
 R6=rpy2r(0.1,0.2,0.3);%简洁写法
 gamma2=tr2rpy(R6);%任意正负号，不会产生多解。theta=+0.5pi/-0.5pi时候有奇异点，但是正常车辆的姿态不会到达这个点
 
 
 
 