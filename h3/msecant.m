function Xs = msecant(F,Xa,Xb,itmax,tol)
    for i = 1:itmax
        fxb = F(Xb);
        Xi = Xb - fxb*(Xa-Xb)/(F(Xa)-fxb);
        if abs((Xi - Xb)/Xb) < tol
            Xs = Xi;
            break
        end
        Xa = Xb;
        Xb = Xi;
    end
    if i == itmax
        fprintf('No Solution')
        Xs = ('No answer');
    end 
end
