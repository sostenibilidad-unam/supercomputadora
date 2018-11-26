import pandas as pd

def parsedate(d):
    return pd.datetime.strptime(d, '%m/%d/%y')

df = pd.read_csv('jobs_per_user.log', sep=' ', header=None, names=['date', 'user'], parse_dates=['date',], date_parser=parsedate)
