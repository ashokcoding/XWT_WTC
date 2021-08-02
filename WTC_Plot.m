%% Demo of the cross wavelet and wavelet coherence toolbox 
% This example illustrates how simple it is to do
% continuous wavelet transform (CWT), Cross wavelet transform (XWT)
% and Wavelet Coherence (WTC) plots of your own data.
%
% The time series we will be analyzing are the winter
% Arctic Oscillation index (AO) and
% the maximum sea ice extent in the Baltic (BMI).
%


%% Load the data
% First we load the two time series into the matrices d1 and d2.

seriesname={'B(nT)' 'Bx(nT)'};
d1=load('Bz3.txt');
d2=load('Vsw3.txt');
d3=load('Nsw3.txt');
d4=load('Psw3.txt');
d5=load('AE3.txt');
d6=load('SYMH3.txt');
d7=load('Bz15.txt');
d8=load('Vsw15.txt');
d9=load('Psw15.txt');
d10=load('Nsw15.txt');
d11=load('AE15.txt');
d12=load('SYMH15.txt');


%% Change the pdf.
% The time series of Baltic Sea ice extent is highly bi-modal and we
% therefore transform the timeseries into a series of percentiles. The
% transformed series probably reacts 'more linearly' to climate.


d1(:,2)=boxpdf(d1(:,2));
d2(:,2)=boxpdf(d2(:,2));
d3(:,2)=boxpdf(d3(:,2));
d4(:,2)=boxpdf(d4(:,2));
d5(:,2)=boxpdf(d5(:,2));
d6(:,2)=boxpdf(d6(:,2));
%d7(:,2)=boxpdf(d7(:,2));
%d8(:,2)=boxpdf(d8(:,2));
%d9(:,2)=boxpdf(d9(:,2));
%d10(:,2)=boxpdf(d10(:,2));
%d11(:,2)=boxpdf(d9(:,2));
%d12(:,2)=boxpdf(d10(:,2));
%% Continuous wavelet transform (CWT)
% The CWT expands the time series into time
% frequency space.

%figure('color',[1 1 1])
%tlim=[min(d1(1,1),d2(1,1)) max(d1(end,1),d2(end,1))];
%subplot(3,2,1);
%wt(d7);
%title(seriesname{1});
%set(gca,'xlim',tlim);
%subplot(3,2,2)
%wt(d8)
%title(seriesname{2})
%set(gca,'xlim',tlim)
%subplot(3,2,3)
%wt(d9)
%title(seriesname{2})
%set(gca,'xlim',tlim)
%subplot(3,2,4)
%wt(d10)
%title(seriesname{2})
%set(gca,'xlim',tlim)
%subplot(3,2,5)
%wt(d11)
%title(seriesname{2})
%set(gca,'xlim',tlim)
%subplot(3,2,6)
%wt(d12)
%title(seriesname{2})
%set(gca,'xlim',tlim)

%% Cross wavelet transform (XWT)
% The XWT finds regions in time frequency space where
% the time series show high common power.

%figure('color',[1 1 1])
%subplot(3,2,1);
%xwt(d8,d7)
%title(['Cross wavelet Transform'] )
%subplot(3,2,2);
%xwt(d8,d9)
%subplot(3,2,3);
%xwt(d8,d10)
%subplot(3,2,4);
%xwt(d8,d11)
%subplot(3,2,5);
%xwt(d8,d12)
%% Wavelet coherence (WTC)
% The WTC finds regions in time frequency space where the two
% time series co-vary (but does not necessarily have high power).

figure('color',[1 1 1])
subplot(3,2,1);
wtc(d2,d1)
%title(['Cross wavelet Transform'] )
subplot(3,2,2);
wtc(d2,d3)
subplot(3,2,3);
wtc(d2,d4)
subplot(3,2,4);
wtc(d2,d5)
subplot(3,2,5);
wtc(d2,d6)




