FROM bradrydzewski/base

RUN add-apt-repository ppa:webupd8team/java && \
	apt-get update && \
	echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections && \
	apt-get install oracle-java8-installer && \
	apt-get install -qq libstdc++6:i386 lib32z1 expect && \
	curl -L https://raw.github.com/embarkmobile/android-sdk-installer/version-2/android-sdk-installer | bash /dev/stdin "--install=build-tools-21.1.0,android-21,extra"
