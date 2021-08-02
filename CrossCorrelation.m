clear all
close all
clf

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

%subplot (2,2,1)
%subplot('position',[0.09 0.67 0.40 0.29]);
a=xlsread('Event2003.xlsx','Sheet1');

%%%%%%%%%%%%%%%%%%%%%%% changes only here
Bz=detrend(a(:,2));
win=15;%half window-lenght
D=Bz;
for i=win:size(D,1)-win
D(i)=nanmean(Bz(i-(win-1):i+(win-1)));
end
Bz=D;
hold on


Vsw=detrend(a(:,3));
win=15;%half window-lenght
D=Vsw;
for i=win:size(D,1)-win
D(i)=nanmean(Vsw(i-(win-1):i+(win-1)));
end
Vsw=D;

Nsw=detrend(a(:,4));
win=15;%half window-lenght
D=Nsw;
for i=win:size(D,1)-win
D(i)=nanmean(Nsw(i-(win-1):i+(win-1)));
end
Nsw=D;

Psw=detrend(a(:,5));
win=15;%half window-lenght
D=Psw;
for i=win:size(D,1)-win
D(i)=nanmean(Psw(i-(win-1):i+(win-1)));
end
Psw=D;

AE=detrend(a(:,6));
win=15;%half window-lenght
D=AE;
for i=win:size(D,1)-win
D(i)=nanmean(AE(i-(win-1):i+(win-1)));
end
AE=D;

SYMH=detrend(a(:,7));
win=15;%half window-lenght
D=SYMH;
for i=win:size(D,1)-win
D(i)=nanmean(SYMH(i-(win-1):i+(win-1)));
end
SYMH=D;

[xc,lags] = xcorr(Vsw,Bz,1440,'coef');
plot(lags,xc,'LineWidth',3)

hold on


[xc,lags] = xcorr(Vsw,Nsw,1440,'coef');
plot(lags,xc,'LineWidth',3)

hold on

[xc,lags] = xcorr(Vsw,Psw,1440,'coef');
plot(lags,xc,'LineWidth',3)

hold on

[xc,lags] = xcorr(Vsw,AE,1440,'coef');
plot(lags,xc,'LineWidth',3)

hold on

[xc,lags] = xcorr(Vsw,SYMH,1440,'coef');
plot(lags,xc,'LineWidth',3)

hold on



ylabel('Cross-Correlation Coefficient','fontsize',16,'FontWeight','bold')
  xlabel('Days','fontsize',16,'FontWeight','bold')
  title('Cross Correlation Analysis','FontWeight','bold','fontsize',16)
  legend('Vsw - Bz', 'Vsw - Nsw','Vsw - Psw','Vsw - AE','Vsw - SYM-H')
  set(gca,'FontWeight','bold','fontsize',16) 

