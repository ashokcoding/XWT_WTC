%% Demo of the cross wavelet and wavelet coherence toolbox 

seriesname={'Thai-1' 'Thai-2'};
d1=load('a.txt');
d2=load('b.txt');


figure('color',[1 1 1])
tlim=[min(d1(1,1),d2(1,1)) max(d1(end,1),d2(end,1))];
subplot(2,1,1);
title(seriesname{1});
set(gca,'xlim',tlim);
subplot(2,1,2)
title(seriesname{2})
set(gca,'xlim',tlim)


%% Cross wavelet transform (XWT)
% The XWT finds regions in time frequency space where
% the time series show high common power.

figure('color',[1 1 1])
title(['Cross wavelet Transform'] )

%% Wavelet coherence (WTC)
% The WTC finds regions in time frequency space where the two
% time series co-vary (but does not necessarily have high power).


figure('color',[1 1 1])
title(['Wavelet Coherence'] )



