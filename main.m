function main(file_name,default_fs, fs_user, filter_type, gains)
try
    [x,fs_default] = audioread(file_name);
    if default_fs == 1
        fs = fs_default;
    else
        fs = fs_user;
    end
catch ex
    errordlg('No wave file with such name exists!!');
    return
end
Ns = length(x);
disp(Ns)
t = 0:1/fs:(Ns-1)/fs;
T = linspace(-fs/2,fs/2,Ns);


wn = 2*170/fs;
[x1_filtered, x1_amp_filtered] = custom_filter(x, gains(1), wn, fs, Ns, 'low', 'First', 1, filter_type);


wn = [340/fs, 620/fs];
[x2_filtered, x2_amp_filtered] = custom_filter(x, gains(2), wn, fs, Ns, 'bandpass', 'Second', 4, filter_type);


wn = [620/fs, 1200/fs];
[x3_filtered, x3_amp_filtered] = custom_filter(x, gains(3), wn, fs, Ns, 'bandpass', 'Third', 7, filter_type);


wn = [1200/fs, 2000/fs];
[x4_filtered, x4_amp_filtered] = custom_filter(x, gains(4), wn, fs, Ns, 'bandpass', 'Fourth', 10, filter_type);


wn = [2000/fs, 6000/fs];
[x5_filtered, x5_amp_filtered] = custom_filter(x, gains(5), wn, fs, Ns, 'bandpass', 'Fifth', 13, filter_type);


wn = [6000/fs, 12000/fs];
[x6_filtered, x6_amp_filtered] = custom_filter(x, gains(6), wn, fs, Ns, 'bandpass', 'Sixth', 16, filter_type);


wn = [12000/fs, 24000/fs];
[x7_filtered, x7_amp_filtered] = custom_filter(x, gains(7), wn, fs, Ns, 'bandpass', 'Seventh', 19, filter_type);


wn = [24000/fs, 28000/fs];
[x8_filtered, x8_amp_filtered] = custom_filter(x, gains(8), wn, fs, Ns, 'bandpass', 'Eighth', 22, filter_type);


wn = [28000/fs, 32000/fs];
[x9_filtered, x9_amp_filtered] = custom_filter(x, gains(9), wn, fs, Ns, 'bandpass', 'Ninth', 25, filter_type);


custom_plot(x1_filtered, x1_amp_filtered, t, T, fs, ' after first filter', ' after first filter')
custom_plot(x2_filtered, x2_amp_filtered, t, T, fs, ' after second filter', ' after second filter')
custom_plot(x3_filtered, x3_amp_filtered, t, T, fs, ' after third filter', ' after third filter')
custom_plot(x4_filtered, x4_amp_filtered, t, T, fs, ' after fourth filter', ' after fourth filter')
custom_plot(x5_filtered, x5_amp_filtered, t, T, fs, ' after fifth filter', ' after fifth filter')
custom_plot(x6_filtered, x6_amp_filtered, t, T, fs, ' after sixth filter', ' after sixth filter')
custom_plot(x7_filtered, x7_amp_filtered, t, T, fs, ' after seventh filter', ' after seventh filter')
custom_plot(x8_filtered, x8_amp_filtered, t, T, fs, ' after eighth filter', ' after eighth filter')
custom_plot(x9_filtered, x9_amp_filtered, t, T, fs, ' after ninth filter', ' after ninth filter')

xt_amp_filtered = x1_amp_filtered + x2_amp_filtered + x3_amp_filtered + x4_amp_filtered + x5_amp_filtered + x6_amp_filtered + x7_amp_filtered + x8_amp_filtered + x9_amp_filtered; 

custom_plot(x, xt_amp_filtered, t, T, fs, ' original', ' filtered')

disp(length(xt_amp_filtered))
audiowrite('new.wav',xt_amp_filtered,fs)

end