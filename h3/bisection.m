function [ r ] = bisection( f, a, b, itmax, tol)

    if ( f(a) == 0 )
	r = a;
	return;
    elseif ( f(b) == 0 )
	r = b;
	return;
    elseif ( f(a) * f(b) > 0 )
        error( 'f(a) and f(b) do not have opposite signs' );
    end


    for k = 1:itmax
        c = (a + b)/2;

        if ( f(c) == 0 )
            r = c;
            return;
        elseif ( f(c)*f(a) < 0 )
            b = c;
        else
            a = c;
        end

        if ( b - a < tol )
            if ( abs( f(a) ) < abs( f(b) ) && abs( f(a) ) < tol )
                r = a;
                return;
            elseif ( abs( f(b) ) < tol )
                r = b;
                return;
            end
        end
    end

    error( 'the method did not converge' );
end
