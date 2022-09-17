
for k = 5:10
    while tol <= 2^-k
        estpi = zeros(1, 1000)
        xtrials = -1 + 2*rand(1)
        ytrials = -1 + 2*rand(1)
        distance = sqrt(xtrials.^2+ytrials.^2)
        if distance <= 1;
            estpi(i) = 1;
        else
            estpi(i) = 0;
        end

        s = sum(estpi)
        frac = s/Ntotal
        piest = 4*frac
        tol = abs(piest-pi)/pi
    end
    disp(piest)
end



