module ScrapingStocks
using  PyCall, Plots, DataFrames

# Pythonライブラリのインストール
pd = pyimport_conda("pandas", "pd")
pdata = pyimport_conda("pandas_datareader", "pdata")
np = pyimport_conda("numpy", "np")
datetime = pyimport_conda("datetime", "datetime")


# GOOGLEの日足株価の取得．
start = datetime.datetime(2018, 1, 1)       # Dates.DateTime type
finish = datetime.datetime(2019, 12, 31)
# このPyObjectの処理をうまくやらないとJuliaのうまみが消えるよね．．．
goog = pdata.data.DataReader("GOOG", "yahoo", start, finish)


end # module
