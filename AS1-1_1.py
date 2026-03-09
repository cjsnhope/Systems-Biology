# 22400755 Jisoo Choi

### Upload the raw data file "as1_data1.csv" !! ###
### (before running the code) ###

# Import libraries
import matplotlib.pyplot as plt # to draw a graph
import pandas as pd # to read csv file

# Assign the csv file to dataframe "df"
df = pd.read_csv('as1_data1.csv')

# Set the size of a graph
plt.figure(figsize=(6.1, 6))

# Draw a plot with setting the color and width of lines
plt.plot(df['time'], df['x'], label='x', color='blue', linewidth=1.5)
plt.plot(df['time'], df['y'], label='y', color='red', linewidth=1.5)
plt.plot(df['time'], df['z'], label='z', color='#66FF66', linewidth=1.5)

# 1) Set the title and axis labels 
plt.title('A dynamic behavior of a system', fontsize=12, pad=20, fontweight='bold')
plt.xlabel('Time', fontsize=10, labelpad=16)
plt.ylabel('Concentrations', fontsize=10, labelpad=16)

# 2) Set the range and ticks of x axis
plt.xlim(-1.5, 31.5) # range including blank
plt.xticks([0, 5, 10, 15, 20, 25, 30]) # ticks

# 3) Set the range and ticks of y axis
plt.ylim(0.3, 1.3)
plt.yticks([0.4, 0.6, 0.8, 1.0, 1.2], rotation=90, va='center') # ticks
plt.tick_params(axis='y', rotation=90) # rotate

# Set the legend
# Assign the legend setting to variable "leg"
leg = plt.legend(loc='upper right', ncol=3, edgecolor='black', framealpha=1,
                 handlelength=2, columnspacing=1.0, bbox_to_anchor=(0.98, 0.98),
                 borderpad=0.9, fancybox=False)

# Change the line width of "leg"
for line in leg.get_lines():
    line.set_linewidth(1.0)

# Keep the spine closed (top, right => no ticks)
# Set the length and pad for ticks
plt.tick_params(axis='both', which='both', top=False, right=False,
                length=6, pad=6)

# Adjust a layout
plt.tight_layout()

# Show the graph
plt.show()

