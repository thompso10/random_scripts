import re

def strip_metadata(filepath):

    with open(filepath, 'r') as file:
        content = file.read()


    found = re.findall(r'^([A-Za-z0-9 ]+?)\s{2,}',content, re.MULTILINE)
    # print(found)
    found_set = set(found)
    print(found_set,sep=', ')


if __name__=="__main__":
    filepath = r"C:\Users\Garrett\Documents\Class - School\Pentesting\Metadata\misc\exiftool_output_misc.txt"
    strip_metadata(filepath)
