% solve odes
y0 = [20,50]; % initial conditions
n=1;
r=0.2;
K=100;
a=0;
d=0.1;
dw=0.2;
Wn=0.4;
opts=odeset('relTol',1e-6,'NonNegative',1:numel(y0));
[T,Y] = ode45(@(t,y) rhs(t,y,n,r,K,a,d,dw,Wn),[0,40],y0,opts);
figure(1);
plot(T,Y); 
legend("Speicies","Water")

% solve odes
y0 = [20,30,50]; % initial conditions
n=2;
r=[0.2,0.3];
K=[100,200];
a=[0,0.1;0,0.1];
d=[0.1,0.15];
dw=[0.2,0.2];
Wn=[0.4,0.3];
opts=odeset('relTol',1e-6,'NonNegative',1:numel(y0));
[T,Y] = ode45(@(t,y) rhs(t,y,n,r,K,a,d,dw,Wn),[0,40],y0,opts);
figure(2);
plot(T,Y); 
legend("Speicie1","Specie2","Water")



