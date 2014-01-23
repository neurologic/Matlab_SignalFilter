function [data]=HighpassGeneral(data,basedata,cutoff,fs)
%data must be in format rows=trials columns=data
% data=BaselineGeneral(data,baselinewin,basedata);
% shouldn't need to baseline because high pass removes DC offset
data=fftFilter(data',fs,cutoff,2)';
