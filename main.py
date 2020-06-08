__author__ = "rgr"

import imaplib
from email.parser import Parser

email_connection = imaplib.IMAP4_SSL(host='imap.gmail.com', port=994)

email_connection.login()