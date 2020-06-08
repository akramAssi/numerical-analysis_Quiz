f = @(x) x^2 - x - 2;
fd=@(x) 2*x - 1;
 
sol1= mnewtons(f,fd,1.5,10,0.00001)
