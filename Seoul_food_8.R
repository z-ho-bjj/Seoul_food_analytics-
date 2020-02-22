head(year_18_food_data_frame)

# install.packages("lubridate")
library(lubridate)

year_18_food_data_frame$������ <- ymd(year_18_food_data_frame$������)

year_18_food_data_frame <- year_18_food_data_frame %>%  mutate(month = month(year_18_food_data_frame$������))

head(year_18_food_data_frame)

str(year_18_food_data_frame)


year_18_food_data_frame$month<-as.factor(year_18_food_data_frame$month)

head(year_18_food_data_frame)
tail(year_18_food_data_frame)


# group by ��, �ñ���, ��ȭ��
data_by_month_county <- year_18_food_data_frame %>%
    group_by(month,�ñ���,����) %>%
    summarize(call = sum(��ȭ�Ǽ�)) %>%
    arrange(month) %>%
    arrange(�ñ���) %>% 
    arrange(����) %>%
    as.data.frame()

head(data_by_month_county)