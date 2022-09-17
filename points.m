
Y = zeros(1,11)
X = zeros(1,11)

for k = 10:20
    c = k - 9
    Ntotal = 2.^k
    Y(c) = HW_2(Ntotal)
    X(c) = Ntotal
end

figure;
yyaxis left
semilogx(X(1:c),Y(1:c),'o','MarkerSize',10);

Y2 = abs(Y - pi)
yyaxis right
semilogx(X(1:c),Y2(1:c),'o','MarkerSize',10);
