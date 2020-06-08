function result = divdiff(X, Y)

    if nargin ~= 2
        error('divdiff: invalid input parameters'); 
    end
    [ p, m ] = size(X); 
    if p ~= 1 || p ~=size(Y, 1) || m ~= size(Y, 2)
        error('divdiff: input vectors must have the same dimension'); 
    end
    result = zeros(m, m);
    result(:, 1) = Y';
    for j = 2 : m
        for i = 1 : (m - j + 1)
            result(i,j) = (result(i + 1, j - 1) - result(i, j - 1)) / (X(i + j - 1) - X(i));
        end
    end
end
 
