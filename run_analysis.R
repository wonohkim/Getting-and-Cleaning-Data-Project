# read train data
# body_acc_x_test = read.table("body_acc_x_test.txt")
# body_acc_y_test = read.table("body_acc_y_test.txt")
# body_acc_z_test = read.table("body_acc_z_test.txt")
# body_gyro_x_test = read.table("body_gyro_x_test.txt")
# body_gyro_y_test = read.table("body_gyro_y_test.txt")
# body_gyro_z_test = read.table("body_gyro_z_test.txt")
X_train = read.table("X_train.txt")
y_train = read.table("y_train.txt")

# read test data
# body_acc_x_train = read.table("body_acc_x_train.txt")
# body_acc_y_train = read.table("body_acc_y_train.txt")
# body_acc_z_train = read.table("body_acc_z_train.txt")
# body_gyro_x_train = read.table("body_gyro_x_train.txt")
# body_gyro_y_train = read.table("body_gyro_y_train.txt")
# body_gyro_z_train = read.table("body_gyro_z_train.txt")
X_test = read.table("X_test.txt")
y_test = read.table("y_test.txt")

# merge data
merge_x = rbind(X_train, X_test)
merge_y = rbind(y_train, y_test)

# tidy data
tidy_data <- cbind(merge_x, merge_y)

# write table
write.table(tidy_data, file = "./tidy_data.txt")
