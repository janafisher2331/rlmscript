args = commandArgs(trailingOnly=TRUE)
filename = args[1]
df = read.csv(filename)
head (df)

png("rlm_scatter.png")
plot(df$x,df$y)

dev.off()

model = lm(y~x, data=df)

summary (model)

summary (model)$r.squared

coef(model)

coef(model)[1]

coef(model)[2]

y_predict = predict(model, df)

png("rlm_fit.png")
plot(df$x,y_predict)

plot(df$x,df$y)
lines(df$x,y_predict)

dev.off()






