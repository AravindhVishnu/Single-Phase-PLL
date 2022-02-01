function e  = phaseDetector(ULSampSine, ULSampCos, pll_sine, pll_cos)

r = ULSampSine * pll_cos;
y = ULSampCos * pll_sine;
e = r -y;

end