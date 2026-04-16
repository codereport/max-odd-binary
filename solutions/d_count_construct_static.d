@safe pure nothrow @nogc
char[N] maxOddBinaryChars(size_t N)(scope const char[N] bits)
{
    size_t ones = 0;
    foreach (c; bits)
    {
        if (c == '1')
            ++ones;
    }

    char[N] result;
    result[] = '0';

    foreach (i; 0 .. ones - 1)
    {
        result[i] = '1';
    }

    result[N - 1] = '1';
    return result;
}
