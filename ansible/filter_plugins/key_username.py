from os.path import basename
import re


def key_username(keypath):
    filename = basename(keypath)

    match = re.search('id_(.*).pub', filename)

    if match:
        return match.group(1)
    else:
        raise Exception("Invalid path: %s. Must have pattern */id_*.pub"
                        % keypath)


class FilterModule(object):

    def filters(self):
        return {
            'key_username': key_username
        }
