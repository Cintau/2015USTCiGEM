clear all
R=R,k=k,k1=k1,k2=k2,k3=k3,k4=k4,k5=k5,k6=k6,k7=k7,k0=k0; %define the constant
t=linspace(0,10); %detecting time range
F=k1*S;
A=k*dsolve('Dx=k2*F','x(0)=0','t');
RA=k3*R*A;
X=k4*RA;
Cl=dsolve('Dx=k5*X','x(0)=0','t');
lambda=1-k6*cl;
t0=fzero(lambda,t); %find the zero point of lambda
if lambda>=0
    G=dsolve('Dx=k7*lambda','x(0)=0','t');
else
    Gm=G(t0);
end
%finish the equation solving step
plot(G,t); %print the G-t picture
hold on
plot(k0*t,t); %print the traditional strategy result in the same image
