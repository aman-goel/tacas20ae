int main()
{
  int tagbuf_len;
  int t;

  if(tagbuf_len >= 1); else return 0;

  t = 0;

  --tagbuf_len;
  while (1) {
    if (t == tagbuf_len) {
      assert(0 <= t);
      assert(t <= tagbuf_len);
      return 0;
    }
    if (*) {
      break;
    }
     assert(0 <= t);
     assert(t <= tagbuf_len);
    t++;
  }

   assert(0 <= t);
   assert(t <= tagbuf_len);
  t++;
  while (1) {
    if (t == tagbuf_len) { /* Suppose t == tagbuf_len - 1 */
      assert(0 <= t);
      assert(t <= tagbuf_len);
      return 0;
    }

    if (*) {
      if ( *) {
	assert(0 <= t);
	assert(t <= tagbuf_len);
        t++;
        if (t == tagbuf_len) {
	  assert(0 <= t);
	  assert(t <= tagbuf_len);
          return 0;
        }
      }
    }
    else if ( *) {
      break;
    }

    assert(0 <= t);
    assert(t <= tagbuf_len);
    t++;
  }
  assert(0 <= t);
  assert(t <= tagbuf_len);
}
