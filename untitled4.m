Ntotal = 1000
figure;
hold('on');
axis([-1,1,-1,1])
axis('square');

video = VideoWriter('montecarlo.avi');
open(video);
for i = 1:Ntotal
    xtrials = -1 + 2*rand(1)
    ytrials = -1 + 2*rand(1)
    distance = sqrt(xtrials.^2+ytrials.^2)
    if distance <= 1;
        scatter(xtrials,ytrials,'green','filled');
        drawnow;
        writeVideo(video,getframe(gcf));
    else
        scatter(xtrials,ytrials,'red','filled');
        drawnow;
        writeVideo(video,getframe(gcf));
    end
end
hold('off');
close(video);
