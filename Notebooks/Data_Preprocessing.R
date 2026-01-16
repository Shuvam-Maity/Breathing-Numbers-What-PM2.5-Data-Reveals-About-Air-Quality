data1=read.csv("D:\\Download\\Jadavpur_2022.csv")
data2=read.csv("D:\\Download\\Ballygunge_2022.csv")
data3=read.csv("D:\\Download\\Rabindra_Sarobar_2022.csv")
data4=read.csv("D:\\Download\\Bidhannagar_2022.csv")
data5=read.csv("D:\\Download\\Rabindra_Bharati_University_2022.csv")
data6=read.csv("D:\\Download\\Fort_William_2022.csv")
data7=read.csv("D:\\Download\\Victoria_2022.csv")
df=data.frame(Time=data6$Timestamp,Jadavpur=data1$PM2.5..µg.m..,Ballygunge=data2$PM2.5..µg.m..,
              Rabindra_Sarobar=data3$PM2.5..µg.m..,Bidhannagar=data4$PM2.5..µg.m..,Rabindra_Bharati=
                data5$PM2.5..µg.m..,Fort_William=data6$PM2.5..µg.m..,Victoria=data7$PM2.5..µg.m..)
df$Kolkata=rowMeans(df[,-1],na.rm = TRUE)
View(df)
write.csv(df, "D:\\Download\\Kolkata_2022.csv", row.names = FALSE)

#===================================================================================================

data1=read.csv("D:\\Download\\Jadavpur_2023.csv")
data2=read.csv("D:\\Download\\Ballygunge_2023.csv")
data3=read.csv("D:\\Download\\Rabindra_Sarobar_2023.csv")
data4=read.csv("D:\\Download\\Bidhannagar_2023.csv")
data5=read.csv("D:\\Download\\Rabindra_Bharati_University_2023.csv")
data6=read.csv("D:\\Download\\Fort_William_2023.csv")
data7=read.csv("D:\\Download\\Victoria_2023.csv")
df=data.frame(Time=data6$Timestamp,Jadavpur=data1$PM2.5..µg.m..,Ballygunge=data2$PM2.5..µg.m..,
              Rabindra_Sarobar=data3$PM2.5..µg.m..,Bidhannagar=data4$PM2.5..µg.m..,Rabindra_Bharati=
                data5$PM2.5..µg.m..,Fort_William=data6$PM2.5..µg.m..,Victoria=data7$PM2.5..µg.m..)
df$Kolkata=rowMeans(df[,-1],na.rm = TRUE)
View(df)
write.csv(df, "D:\\Download\\Kolkata_2023.csv", row.names = FALSE)

#===================================================================================================

data1=read.csv("D:\\Download\\Jadavpur_2024.csv")
data2=read.csv("D:\\Download\\Ballygunge_2024.csv")
data3=read.csv("D:\\Download\\Rabindra_Sarobar_2024.csv")
data4=read.csv("D:\\Download\\Bidhannagar_2024.csv")
data5=read.csv("D:\\Download\\Rabindra_Bharati_University_2024.csv")
data6=read.csv("D:\\Download\\Fort_William_2024.csv")
data7=read.csv("D:\\Download\\Victoria_2024.csv")
df=data.frame(Time=data6$Timestamp,Jadavpur=data1$PM2.5..µg.m..,Ballygunge=data2$PM2.5..µg.m..,
              Rabindra_Sarobar=data3$PM2.5..µg.m..,Bidhannagar=data4$PM2.5..µg.m..,Rabindra_Bharati=
                data5$PM2.5..µg.m..,Fort_William=data6$PM2.5..µg.m..,Victoria=data7$PM2.5..µg.m..)
df$Kolkata=rowMeans(df[,-1],na.rm = TRUE)
View(df)
write.csv(df, "D:\\Download\\Kolkata_2024.csv", row.names = FALSE)

#===================================================================================================

df1 <- read.csv("D:\\Download\\Kolkata_2022.csv")
df2 <- read.csv("D:\\Download\\Kolkata_2023.csv")
df3 <- read.csv("D:\\Download\\Kolkata_2024.csv")

# Combine them into one
final_df <- rbind(df1, df2, df3)
final_df
write.csv(final_df, "D:\\Download\\Kolkata_all.csv", row.names = FALSE)
fd=data.frame(Time=final_df$Time,Kolkata=final_df$Kolkata)
write.csv(fd, "D:\\Download\\Only_Kolkata.csv", row.names = FALSE)