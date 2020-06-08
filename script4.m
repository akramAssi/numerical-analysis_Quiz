x = -5:5;
y = (x.^2.+1).^-1;
xx = divdiff(x,y);
yy=polyval(xx,x,11)
plot(x,y,'^r',xx,yy,'sb')