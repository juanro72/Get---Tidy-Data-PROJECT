##Note 1 - See README.md

      f1<-read.table("X_train.txt")
      f2<-read.table("X_test.txt")

##----------------------------------
##Note 2 - See README.md

      Mfile<-merge(f1,f2, all=TRUE)

##----------------------------------
##Note 3 - See README.md
      
      Means<-matrix(,)
      StDevs<-matrix(,)
      
      for (i in 1:561) {
            
            Means[i]<-mean(Mfile[,i])
            StDevs[i]<-sd(Mfile[,i])
            
      }

      MSDs<-cbind(Means,StDevs)
      
##----------------------------------
##Note 4 - See README.md
            
      write.table(MSDs, file="MSDs.txt", row.name=FALSE)
