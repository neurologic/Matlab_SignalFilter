function data=dnsample_data(data,oldSampRate,newSampRate)
didflip=0;
if find(max(size(data)))==2
    data=data';
    didflip=1;
end

bin=round(oldSampRate/newSampRate);

data=data(1:bin:end,1);
if didflip==1
    
    data=data';
end
