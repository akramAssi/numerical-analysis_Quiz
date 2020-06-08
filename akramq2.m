1000.00000000000000005-1000
format long
figure
syms x
xx=-1:.5:3
f = sin(x)
y=subs(f,xx)
plot(xx,y,"*b-")

t=taylor(f,'Order',4);
xx=subs(t,1);
fprintf('p3(q1)=%s',char(xx))
error = subs (f,1)-subs(t,1)
