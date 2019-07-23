FROM python
RUN apt-get install -y git
RUN git clone https://github.com/binayr/LearnPython.git
RUN echo "#!/bin/bash" >> run.sh
RUN echo "cd LearnPython" >> run.sh
RUN echo "jupyter notebook --ip 0.0.0.0 --no-browser --allow-root" >> run.sh
RUN chmod 755 run.sh
RUN pip install jupyter beautifulsoup4
EXPOSE 8888
ENTRYPOINT ["./run.sh"]
#RUN jupyter notebook
