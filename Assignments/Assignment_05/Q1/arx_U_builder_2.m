function U = arx_U_builder(n,m,u,y)

    N = length(y);
    p = n+m;
    U = zeros(N,p);
    
    for i=1:N
        for j=1:n
            if (i-j)>0
                U(i,j) = -y(i-j);
            else
                continue
            end
        end
        for j=n+1:p
            k=j-(n+1);
            if (i-k)>1
                U(i,j) = u(i-k);
            else
                continue
            end
        end
    end
end