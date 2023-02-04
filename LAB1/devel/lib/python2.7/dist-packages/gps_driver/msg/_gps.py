# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gps_driver/gps.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class gps(genpy.Message):
  _md5sum = "907d5960bda1dc0a60523da9639ca85b"
  _type = "gps_driver/gps"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string header
float64 latitude
float64 longitude
float64 altitude
float64 utm_easting
float64 utm_northing
int64 zone
string letter
"""
  __slots__ = ['header','latitude','longitude','altitude','utm_easting','utm_northing','zone','letter']
  _slot_types = ['string','float64','float64','float64','float64','float64','int64','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,latitude,longitude,altitude,utm_easting,utm_northing,zone,letter

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(gps, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = ''
      if self.latitude is None:
        self.latitude = 0.
      if self.longitude is None:
        self.longitude = 0.
      if self.altitude is None:
        self.altitude = 0.
      if self.utm_easting is None:
        self.utm_easting = 0.
      if self.utm_northing is None:
        self.utm_northing = 0.
      if self.zone is None:
        self.zone = 0
      if self.letter is None:
        self.letter = ''
    else:
      self.header = ''
      self.latitude = 0.
      self.longitude = 0.
      self.altitude = 0.
      self.utm_easting = 0.
      self.utm_northing = 0.
      self.zone = 0
      self.letter = ''

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.header
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_5dq().pack(_x.latitude, _x.longitude, _x.altitude, _x.utm_easting, _x.utm_northing, _x.zone))
      _x = self.letter
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header = str[start:end]
      _x = self
      start = end
      end += 48
      (_x.latitude, _x.longitude, _x.altitude, _x.utm_easting, _x.utm_northing, _x.zone,) = _get_struct_5dq().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.letter = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.letter = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.header
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_5dq().pack(_x.latitude, _x.longitude, _x.altitude, _x.utm_easting, _x.utm_northing, _x.zone))
      _x = self.letter
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header = str[start:end]
      _x = self
      start = end
      end += 48
      (_x.latitude, _x.longitude, _x.altitude, _x.utm_easting, _x.utm_northing, _x.zone,) = _get_struct_5dq().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.letter = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.letter = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_5dq = None
def _get_struct_5dq():
    global _struct_5dq
    if _struct_5dq is None:
        _struct_5dq = struct.Struct("<5dq")
    return _struct_5dq
