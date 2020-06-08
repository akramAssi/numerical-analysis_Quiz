function p = polyval(a,c,t)
    if isempty(c)==true 
        p =a;
    elseif isscalar(c)==true
        p = a+c*t;
    else 
        w=c(:);
        n=length(c);
        Y= 1:n;
        xx=t.^Y;
        p=a+xx*w;
    end
end
 
