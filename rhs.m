function dydt = rhs(t,y,n,r,K,a,d,dw,Wn)
N=y;
Ws=y(n+1);
dydt = zeros(n+1,1);
% ode
for i = 1:n
    sum=0;
    for j=1:n
        sum=sum+a(j,i)*N(j);
    end
    sum2 =0;
    for j=1:n
        sum2=sum2+Wn(j)*N(j);
    end
    dydt(i)=r(i)*N(i)*((K(i)-N(i)+sum)/K(i))-d(i)*N(i)...
        -dw(i)*N(i)*max(sum2-Ws,0);
end
sum3 = 0;
for j=1:n
    sum3=sum3+Wn(j)*N(j);
end
dydt(n+1)=f(t)-sum3;

end