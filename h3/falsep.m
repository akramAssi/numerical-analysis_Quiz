function Xs = falsep(f,Xa,Xb,imax,tol)
    for i = 1:imax
        Xi = (Xa+Xb)/2;
        fxb = f(Xi);
        if (fxb==0 || Xi <tol)
            Xs = Xi;
            break
        end
        if (f(Xa) * fxb >0)
            Xa=Xi;
        else
            Xb=Xi;
        end
        if i == imax
            fprintf('No Solution')
            Xs = ('No answer');
        end
    end
