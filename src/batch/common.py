from lxml import etree

class XmlStreamReader():
    '''  Loads a large XML file as a stream and returns various 
         useful generators.
         Pass the XML file 
         and the root record tag
         '''
    
    def __init__(self,record_tag,xml_file):
        self.xml_file = xml_file
        self.record_tag = record_tag
    
    def _iter_open(self):
        # by using the default 'end' event, you start at the _bottom_ of the tree
        for event, element in etree.iterparse(self.xml_file, events=("start","end")):
            if event == "start" and  element.tag == self.record_tag:
                
                yield element
#                print "Start", element.tag
#            if event == "end" and  element.tag == self.record_tag:
#                #yield element
#                print "End", element 
            #element.clear()
            
    def elements(self):   
        return self._iter_open()
    
            


def get_valid_input(input_string, valid_options):
    input_string += " ({}) ".format(", ".join(valid_options))
    response = raw_input(input_string)
    while response.lower() not in valid_options:
        response = input(input_string)
    return response  