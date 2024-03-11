FROM python:3.10-bookworm
RUN pip3 install cmake && \
    pip3 install numpy && \
    pip3 install pandas && \
    pip3 install xgboost && \
    pip3 install scikit-learn
COPY ./rangemodel.pkl /
COPY ./predict.py   /
COPY ./test_df_no_target.csv    /
CMD [ "python3", "predict.py" ]


