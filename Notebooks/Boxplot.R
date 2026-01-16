df=read.csv("D:\\Download\\Kolkata_all.csv")

# 1. Basic Black and White Boxplot
boxplot(df[,c(-1)], 
        main = "PM2.5 Distribution across Kolkata Locations",
        ylab = expression(paste("PM"[2.5], " (", mu, "g/m"^3, ")")),
        xlab = "Monitoring Stations",
        col = "white",          # White boxes
        border = "black",       # Sharp black borders
        las = 2,                # Vertical labels for readability
        cex.axis = 0.8,         # Slightly smaller font for labels
        outpch = 1,             # Open circles for outliers (looks cleaner in B&W)
        outcol = "black")       # Black outliers

# 2. Add Reference Lines (Crucial for PM2.5 Interpretation)
# National Standard: 60 ug/m3
abline(h = 60, lwd = 2, lty = 2, col = "black") 
text(x = 0.5, y = 65, "India Limit (60)", adj = 0, font = 2)

# WHO Guideline: 15 ug/m3
abline(h = 15, lwd = 1, lty = 3, col = "black")
text(x = 0.5, y = 20, "WHO Guideline (15)", adj = 0, font = 3)