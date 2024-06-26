# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from tosba/robot_durumu.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class robot_durumu(genpy.Message):
  _md5sum = "8617436c5c51524b82803c8a17f9596d"
  _type = "tosba/robot_durumu"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """Header Header
int32 robot_id
bool is_ready 
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
"""
  __slots__ = ['Header','robot_id','is_ready']
  _slot_types = ['std_msgs/Header','int32','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Header,robot_id,is_ready

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(robot_durumu, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.Header is None:
        self.Header = std_msgs.msg.Header()
      if self.robot_id is None:
        self.robot_id = 0
      if self.is_ready is None:
        self.is_ready = False
    else:
      self.Header = std_msgs.msg.Header()
      self.robot_id = 0
      self.is_ready = False

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
      _x = self
      buff.write(_get_struct_3I().pack(_x.Header.seq, _x.Header.stamp.secs, _x.Header.stamp.nsecs))
      _x = self.Header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_iB().pack(_x.robot_id, _x.is_ready))
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
      if self.Header is None:
        self.Header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.Header.seq, _x.Header.stamp.secs, _x.Header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Header.frame_id = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.robot_id, _x.is_ready,) = _get_struct_iB().unpack(str[start:end])
      self.is_ready = bool(self.is_ready)
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
      _x = self
      buff.write(_get_struct_3I().pack(_x.Header.seq, _x.Header.stamp.secs, _x.Header.stamp.nsecs))
      _x = self.Header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_iB().pack(_x.robot_id, _x.is_ready))
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
      if self.Header is None:
        self.Header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.Header.seq, _x.Header.stamp.secs, _x.Header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.Header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.Header.frame_id = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.robot_id, _x.is_ready,) = _get_struct_iB().unpack(str[start:end])
      self.is_ready = bool(self.is_ready)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_iB = None
def _get_struct_iB():
    global _struct_iB
    if _struct_iB is None:
        _struct_iB = struct.Struct("<iB")
    return _struct_iB
