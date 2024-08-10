FROM ubuntu:24.04
ADD max10-23.1std.1.993.qdz QuartusLiteSetup-23.1std.1.993-linux.run /
RUN apt-get update && apt-get install -q -y build-essential libglib2.0-0
RUN /QuartusLiteSetup-23.1std.1.993-linux.run --accept_eula 1 --mode unattended
RUN echo export QUARTUS_ROOTDIR=/root/intelFPGA_lite/23.1std/quartus >> /root/.bashrc
RUN echo export PATH='$QUARTUS_ROOTDIR/bin:$QSYS_ROOTDIR:$PATH' >> /root/.bashrc
RUN rm /max10-23.1std.1.993.qdz 
RUN rm /QuartusLiteSetup-23.1std.1.993-linux.run  
