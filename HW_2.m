
function piest = HW_2(Ntotal)
% HW_2 Determines how many random uniformly distributed points are in a radius 1
% circle.

estpi = zeros(1, Ntotal) % matrix of how many points are in circle

for i = 1:Ntotal % number of points
    xtrials = -1 + 2*rand(1) % x-value in (-1,1)
    ytrials = -1 + 2*rand(1) % y-value in (-1,1)
    distance = sqrt(xtrials.^2+ytrials.^2) % distance from origin
    if distance <= 1; % within circle
        estpi(i) = 1;
    else
        estpi(i) = 0; % within square, outside circle
    end

    s = sum(estpi) % number of points in circle
    frac = s/Ntotal
    piest = 4*frac % estimate of pi

end
end

