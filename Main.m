% 1. Load catalog
load('Data\NCEDC2019to2022.mat'); 
time=t; 
mag=m;
Mmin=1;
AnomETAS_PlotMT(time,mag);

% >> Basic Setting
Tmain=500;        % Mainshock Occurrence timing
% Tmain=time(mag==max(mag));
IDmain=1;        % Mainshock IDentifier
Wins=20;         % Window size
Shift=2;         % Sliding step
P0=0.01;         % Anomaly threshold
FitWins=400;     % IET-Fitting period
GapWins=50;      % Gap-Fitting period before M.S.
Nsamples=3e3;    % Monte-Carlo samples
%% ========================================================================
% Calculation
Result=AnomIET_Forecast(time, mag, Tmain, Wins, Shift, FitWins, ...
    GapWins, Nsamples, P0);
%% ========================================================================
% Plot Results
AnomIET_PlotResult(Result,IDmain);
% AnomIET_PlotSequence(Result,IDmain);
