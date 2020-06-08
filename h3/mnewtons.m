function Xs = mnewtons ( F, FD , val , itmax, tol)
    for i = 1: itmax
        Xi = val - F(val) /FD(val);
        if abs ( (Xi - val) /val) < tol
            Xs = Xi;
            break
        end
        val=Xi;
    end
    if i==itmax
        fprintf ('No Solution ');
        Xs=( 'No answer' ) ;
    end 
end
