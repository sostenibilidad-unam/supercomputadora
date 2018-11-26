from pony.orm import *

db = Database()


class Job(db.Entity):
    user = Required(str)
    year = Required(int)
    month = Required(int)
    day = Required(int)

db.bind(provider='sqlite', filename='database.sqlite', create_db=True)
db.generate_mapping(create_tables=True)
