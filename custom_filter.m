function [x_filtered, x_amp_filtered] = custom_filter(x,gain, wn, fs, Ns, type, message, i, filter_type)  
    gain_watt = 10.^(gain/20);
    if filter_type == 2
        num = fir1(50,wn,type);
        den = 1;
        [num,den] = eqtflength(num, den);
        [z,p,k] = tf2zp(num,den);
        [num_amp,den_amp] = zp2tf(z,p,gain_watt*k);
        disp('fir')
    else
        [num,den] = butter(3, wn, type);
        [z,p,k] = butter(3, wn, type);
        [num_amp,den_amp] = zp2tf(z,p,gain_watt*k);
        disp('iir')
    end
    
    figure(i)
    subplot(2,1,1)
    freqz(num_amp,den_amp)
    figure(i+1)
    sys = tf(num_amp,den_amp);
    subplot(2,1,1)
    step(sys)
    subplot(2,1,2)
    impulse(sys)
    figure(i+2)
    zplane(z,p)
    title(strcat(message,' filter zeros and poles'))
    
    x_filtered = filter(num,den,x);
    x_amp_filtered = filter(num_amp,den_amp,x);
end