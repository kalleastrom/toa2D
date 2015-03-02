%% Generate data, receiver positions R and transmitter positions S
R = [[0;0] randn(2,2)]; R(1,3)=0
S = randn(2,3)

%% Calculate 9 distances from 3 transmitters to 3 receivers
d=toa_calc_d_from_xy(R,S)

%% Run solver on distances, to obtain all real minimal solutions
[Rc,Sc]=toa_2D_33(d);

Rc
Sc

%% Plot results (plot maximum of four of the real solutions)
close all;
for k = 1:min(length(Rc),4);
    figure(1);
    subplot(2,2,k);
    hold off;
    plot(Rc{k}(1,:),Rc{k}(2,:),'o');
    hold on;
    plot(Sc{k}(1,:),Sc{k}(2,:),'*');
    for i = 1:3,
        for j = 1:3,
            plot([Rc{k}(1,i) Sc{k}(1,j)],[Rc{k}(2,i) Sc{k}(2,j)],'-');
            xx = (Rc{k}(1,i)+Sc{k}(1,j))/2;
            yy = (Rc{k}(2,i)+Sc{k}(2,j))/2;
            text(xx,yy,num2str(d(i,j),2));
        end
    end
end;