default:
	@cat makefile

synthetic_data.csv:
	 wget synthetic_data.csv https://gist.githubusercontent.com/Niarfe/25100a860cbb660150a3fec87378d8ac/raw/b280768fc7ad782c65f0e714017af2f05ba88ef2/synthetic_data.csv

square_wave.png:
	gnuplot -e "set datafile separator ','; set term png; set output 'square_wave.png'; plot 'synthetic_data.csv' using 1:2 with lines"

fibonachi.png:
	gnuplot -e "set datafile separator ','; set term png; set output 'fibonachi.png'; plot 'synthetic_data.csv' using 1:3 with lines"

clean:
	rm -f square_wave.png fibonachi.png synthetic_data.csv

.PHONY: all_images
all_images:fibonachi.png square_wave.png
