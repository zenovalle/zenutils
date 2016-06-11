      *  SYS_H -- System header prototypes and data structures.
      *

      /IF DEFINED(SYS_H)
      /EOF
      /ELSE
      /DEFINE SYS_H
      /ENDIF

      * ========================================================================
      * Constants.
      * ========================================================================

      * *********************************************************************
      * Timestamp representing the time "zero" in order to obtain
      * the real time adding to it the time in seconds.
      * *********************************************************************
     D SYS_EPOCH       c                   z'1970-01-01-00.00.00.000000'

      * *********************************************************************
      * Library list.
      * *********************************************************************
     D SYS_LIBRARY_LIST...
     D                 c                   '*LIBL'

      * *********************************************************************
      * Current library.
      * *********************************************************************
     D SYS_CURRENT_LIBRARY...
     D                 c                   '*CURLIB'

      * *********************************************************************
      * User space extended attribute.
      * *********************************************************************
     D SYS_USRSPC_EXT_ATTR...
     D                 c                   'USP'

      * *********************************************************************
      * Default user space initial value.
      * *********************************************************************
     D SYS_USRSPC_INIT_VALUE...
     D                 c                   x'00'

      * *********************************************************************
      * Default user space initial size.
      * *********************************************************************
     D SYS_USRSPC_INIT_SIZE...
     D                 c                   1024

      * *********************************************************************
      * Replaces user space.
      * *********************************************************************
     D SYS_USRSPC_REPLACE...
     D                 c                   '*YES'

      * *********************************************************************
      * Does not replace user space.
      * *********************************************************************
     D SYS_USRSPC_CONT_REPLACE...
     D                 c                   '*NO'

      * *********************************************************************
      * Allows the system to decide into which domain the object should be created.
      * *********************************************************************
     D SYS_USRSPC_DOMAIN_DEFAULT...
     D                 c                   '*DEFAULT'

      * *********************************************************************
      * Creates the user space object into the system domain.
      * *********************************************************************
     D SYS_USRSPC_DOMAIN_SYSTEM...
     D                 c                   '*SYSTEM'

      * *********************************************************************
      * Attempts to create the user space object into the user domain.
      * *********************************************************************
     D SYS_USRSPC_DOMAIN_USER...
     D                 c                   '*USER'

      * *********************************************************************
      * Max user space size in bytes (16 MB).
      * *********************************************************************
     D SYS_USRSPC_MAX_SIZE...
     D                 c                   16773120

      * *********************************************************************
      * The user can perform all authorized operations on the object.
      * *********************************************************************
     D SYS_PUBLIC_AUTH_ALL...
     D                 c                   '*ALL'

      * *********************************************************************
      * The user can read the object description and has read, add, update,
      * and delete authority to the object.
      * *********************************************************************
     D SYS_PUBLIC_AUTH_CHANGE...
     D                 c                   '*CHANGE'

      * *********************************************************************
      * The public authority for the user space is taken from the CRTAUT
      * value for the target library when the object is created.
      * *********************************************************************
     D SYS_PUBLIC_AUTH_LIBCRTAUT...
     D                 c                   '*LIBCRTAUT'

      * *********************************************************************
      * The user can read the object and its description but cannot change them.
      * *********************************************************************
     D SYS_PUBLIC_AUTH_USE...
     D                 c                   '*USE'

      * *********************************************************************
      * Command type of message.
      * *********************************************************************
     D SYS_MSG_COMMAND...
     D                 c                   '*CMD'

      * *********************************************************************
      * Completion type of message.
      * *********************************************************************
     D SYS_MSG_COMPLETION...
     D                 c                   '*COMP'

      * *********************************************************************
      * Diagnostic type of message.
      * *********************************************************************
     D SYS_MSG_DIAGNOSTIC...
     D                 c                   '*DIAG'

      * *********************************************************************
      * Escape type of message.
      * *********************************************************************
     D SYS_MSG_ESCAPE...
     D                 c                   '*ESCAPE'

      * *********************************************************************
      * Informational.
      * *********************************************************************
     D SYS_MSG_INFO...
     D                 c                   '*INFO'

      * *********************************************************************
      * Inquiry type of message.
      * You can send inquiry messages only to the external message queue.
      * *********************************************************************
     D SYS_MSG_INQUIRY...
     D                 c                   '*INQ'

      * *********************************************************************
      * Notify type of message.
      * *********************************************************************
     D SYS_MSG_NOTIFY...
     D                 c                   '*NOTIFY'

      * *********************************************************************
      * Request type of message.
      * *********************************************************************
     D SYS_MSG_REQUEST...
     D                 c                   '*RQS'

      * *********************************************************************
      * Status type of message.
      * *********************************************************************
     D SYS_MSG_STATUS...
     D                 c                   '*STATUS'

      * *********************************************************************
      * Call stack entry.
      * *********************************************************************
      * The current call stack entry.
     D SYS_STACK_CURRENT...
     D                 c                   '*'

      * *********************************************************************
      * The call stack is for the boundary of the specified program object.
      * *********************************************************************
     D SYS_STACK_PROGRAM_BOUNDARY...
     D                 c                   '*PGMBDY'

      * *********************************************************************
      * The call stack entry at the most recent control boundary.
      * *********************************************************************
     D SYS_STACK_CONTROL_BOUNDARY...
     D                 c                   '*CTLBDY'

      * *********************************************************************
      * The call stack entry is identified entirely by the program name.
      * *********************************************************************
     D SYS_STACK_PROGRAM_NAME...
     D                 c                   '*PGMNAME'

      * *********************************************************************
      * The external message queue.
      * *********************************************************************
     D SYS_STACK_EXTERNAL...
     D                 c                   '*EXT'

      * *********************************************************************
      * Call stack counter.
      * Send message to the message queue specified.
      * *********************************************************************
     D SYS_STACKCOUNT_BASE...
     D                 c                   0

      * ========================================================================
      * Definitions.
      * ========================================================================

      * ************************************************************************
      * Size of an object in memory in bytes.
      * ************************************************************************
     D SYS_size_t...
     D                 s             10u 0 template

      * ************************************************************************
      * Size of a character representation.
      * ************************************************************************
      /IF DEFINED(UTF32__)
     D SYS_wchar_t...
     D                 s             10u 0 template
      /ELSE
     D SYS_wchar_t...
     D                 s              5u 0 template
      /ENDIF

      * ************************************************************************
      * Pointer difference.
      * ************************************************************************
     D SYS_ptrfiff_t...
     D                 s             10i 0 template

      * ************************************************************************
      * Object name.
      * ************************************************************************
     D SYS_objname_t...
     D                 s             10a   template

      * ************************************************************************
      * Object type.
      * ************************************************************************
     D SYS_objtype_t...
     D                 s              7a   template

      * ************************************************************************
      * Object attribute.
      * ************************************************************************
     D SYS_objattr_t...
     D                 s             10a   template

      * ************************************************************************
      * Object description.
      * ************************************************************************
     D SYS_objdesc_t...
     D                 s             50a   template

      * ************************************************************************
      * Library name.
      * ************************************************************************
     D SYS_libname_t...
     D                 s             10a   template

      * ************************************************************************
      * Library type.
      * ************************************************************************
     D SYS_libtype_t...
     D                 s              5a   template

      * ************************************************************************
      * File name.
      * ************************************************************************
     D SYS_filname_t...
     D                 s             10a   template

      * ************************************************************************
      * File type.
      * ************************************************************************
     D SYS_filtype_t...
     D                 s             10a   template

      * ************************************************************************
      * File attribute.
      * ************************************************************************
     D SYS_filattr_t...
     D                 s             10a   template

      * ************************************************************************
      * Member name.
      * ************************************************************************
     D SYS_mbrname_t...
     D                 s             10a   template

      * ************************************************************************
      * Member type.
      * ************************************************************************
     D SYS_mbrtype_t...
     D                 s             10a   template

      * ************************************************************************
      * Program name.
      * ************************************************************************
     D SYS_pgmname_t...
     D                 s             10a   template

      * ************************************************************************
      * Program attribute.
      * ************************************************************************
     D SYS_pgmattr_t...
     D                 s              9a   template

      * ************************************************************************
      * Module name.
      * ************************************************************************
     D SYS_modname_t...
     D                 s             10a   template

      * ************************************************************************
      * Module attribute.
      * ************************************************************************
     D SYS_modattr_t...
     D                 s              9a   template

      * ************************************************************************
      * Message Id.
      * ************************************************************************
     D SYS_msgid_t...
     D                 s              7a   template

      * ************************************************************************
      * Message Type.
      * ************************************************************************
     D SYS_msgtype_t...
     D                 s             10a   template

      * ************************************************************************
      * Message Key.
      * ************************************************************************
     D SYS_msgkey_t...
     D                 s              4a   template

      * ************************************************************************
      * Charset ID.
      * ************************************************************************
     D SYS_charset_t...
     D                 s             10i 0 template

      * ************************************************************************
      * Seconds count. Used for time duration in seconds.
      * ************************************************************************
     D SYS_seccount_t...
     D                 s             10i 0 template

      * ************************************************************************
      * Max alfanumeric fields length.
      * ************************************************************************
     D SYS_varying_t...
     D                 s          32767a   template varying

      * ************************************************************************
      * Max alfanumeric fields length. Used for hex.
      * ************************************************************************
     D SYS_varying_hex_t...
     D                 s          65534a   template varying

      * ************************************************************************
      * Public authority.
      * ************************************************************************
     D SYS_auth_t...
     D                 s             10a   template

      * ************************************************************************
      * Domain.
      * ************************************************************************
     D SYS_domain_t...
     D                 s             10a   template

      * *****************************************************************************
      * Error Code Parameter
      * *****************************************************************************
     D SYS_Error_t     ds                  qualified template
      *** Bytes provided
     D  BytesPrv                     10i 0 inz(%size(SYS_Error_t))
      *** Bytes Available
     D  BytesAvl                     10i 0 inz(0)
      *** Exception Id
     D  ExcpID                        7a
      *** Reserved
     D                                1a
      *** Message
     D  Message                    1024a

      * ************************************************************************
      * User Space Qualified Name.
      * ************************************************************************
     D SYS_UsrSpc_Qna_t...
     D                 ds                  qualified template
     D  Name                               like(SYS_objname_t)
     D  Library                            like(SYS_libname_t)

      * ************************************************************************
      * Message File Qualified Name.
      * ************************************************************************
     D SYS_MsgF_Qna_t...
     D                 ds                  qualified template
     D  Name                               like(SYS_objname_t)
     D  Library                            like(SYS_libname_t)

      * ************************************************************************
      * Call stack entry qualified name.
      * ************************************************************************
     D SYS_StackEnt_Qna_t...
     D                 ds                  qualified template
     D  Module                             like(SYS_modname_t)
     D  Program                            like(SYS_pgmname_t)

      * ************************************************************************
      * UUID return template.
      * ************************************************************************
     D SYS_UUID_t...
     D                 ds                  qualified template
     D  BytesPrv                     10i 0 inz(%size(SYS_UUID_t))
     D  BytesAvl                     10i 0
     D                                8a   inz(*allx'00')
     D  UUID                         16a

      * ========================================================================
      * Exported Procedures Prototypes.
      * ========================================================================

      * ************************************************************************
      *  SYS_Create_UsrSpc(): Create an User Space, for more info search
      *     IBM Support Portal for QUSCRTUS.
      *
      *   UsrSpcQna   = (input) User Space Qualified Name;
      *   ExtAttr     = (input) Extended attribute;
      *   InitSize    = (input) Initial size;
      *   InitValue   = (input) Initial value;
      *   Authority   = (input) Public authority;
      *   Description = (input) Text description;
      *   Replace     = (input) Replace? (optional 1);
      *   Error       = (input/output) Error code (optional 1);
      *   Domain      = (input) Domain (optional 2);
      *   TrfSize     = (input) Transfer size request (optional 3);
      *   OptAlign    = (input) Optimum space alignment (optional 3).
      *
      * Returns void.
      * ************************************************************************
     D SYS_Create_UsrSpc...
     D                 pr                  extpgm('QUSCRTUS')
     D  usrspcqna                          const likeds(SYS_UsrSpc_Qna_t)
     D  extattr                            const like(SYS_objattr_t)
     D  initsize                           const like(SYS_size_t)
     D  initvalue                     1a   const
     D  authority                          const like(SYS_auth_t)
     D  description                        const like(SYS_objdesc_t)

     D  replace                      10a   const options(*nopass)
     D  error                              likeds(SYS_Error_t) options(*nopass)

     D  domain                             const like(SYS_domain_t)
     D                                           options(*nopass)

     D  trfsize                      10i 0 const options(*nopass)
     D  optalign                      1a   const options(*nopass)

      * ************************************************************************
      *  SYS_Retrieve_UsrSpc_p(): Retrieve pointer to User Space , for more info
      *     search IBM Support Portal for QUSPTRUS.
      *
      *   UsrSpcQna = (input) User Space Qualified Name;
      *   Pointer   = (output) Pointer to the User Space;
      *   Error     = (input/output) Error code (optional 1).
      *
      * Returns void.
      * ************************************************************************
     D SYS_Retrieve_UsrSpc_p...
     D                 pr                  extpgm('QUSPTRUS')
     D  usrspcqna                          const likeds(SYS_UsrSpc_Qna_t)
     D  pointer                        *
     D  error                              likeds(SYS_Error_t) options(*nopass)

      * ************************************************************************
      *  SYS_Delete_UsrSpc(): Delete an User Space, for more info search
      *     IBM Support Portal for QUSDLTUS.
      *
      *   UsrSpcQna = (input) User Space Qualified Name;
      *   Error     = (input/output) Error code (optional 1).
      *
      * Returns void.
      * ************************************************************************
     D SYS_Delete_UsrSpc...
     D                 pr                  extpgm('QUSDLTUS')
     D  usrspcqna                          const likeds(SYS_UsrSpc_Qna_t)
     D  error                              likeds(SYS_Error_t) options(*nopass)

      * ************************************************************************
      *  SYS_Send_PgmMsg(): sends a message to a call message queue or the
      *     external message queue, for mo re info search
      *     IBM Support Portal for QMHSNDPM.
      *
      *   MsgId     = (input) Message identifier;
      *   MsgFQna   = (input) Qualified message file name;
      *   MsgData   = (input) Message data or immediate text;
      *   MsgLen    = (input) Length of message data or immediate text;
      *   MsgType   = (input) Message type;
      *   StackEnt  = (input) Call stack entry;
      *   StackCnt  = (input) Call stack counter;
      *   MsgKey    = (output) Message key;
      *   Error     = (input/output) Error code;
      *   StackLen  = (input) Length of call stack entry (optional 1);
      *   StackQna  = (input) Call stack entry qualification (optional 1);
      *   WaitTime  = (input) Display program messages screen wait time (optional 1);
      *   StackTyp  = (input) Call stack entry data type (optional 2);
      *   CharSet   = (input) Coded character set identifier (optional 2).
      *
      * Returns void.
      * ************************************************************************
     D SYS_Send_PgmMsg...
     D                 pr                  extpgm('QMHSNDPM')
     D  msgid                              const like(SYS_msgid_t)
     D  msgfqna                            const likeds(SYS_MsgF_Qna_t)
     D  msgdata                            const like(SYS_varying_t)
     D                                           options(*varsize)
     D  msglen                             const like(SYS_size_t)
     D  msgtype                            const like(SYS_msgtype_t)
     D  stackent                           const like(SYS_varying_t)
     D                                           options(*varsize)
     D  stackcnt                     10i 0 const
     D  msgkey                                   like(SYS_msgkey_t)
     D  error                                    likeds(SYS_Error_t)

     D  stacklen                           const like(SYS_size_t)
     D                                            options(*nopass)
     D  stackqna                           const likeds(SYS_StackEnt_Qna_t)
     D                                           options(*nopass)
     D  waittime                           const like(SYS_seccount_t)
     D                                           options(*nopass)

     D  stacktyp                     10a   const options(*nopass)
     D  charset                            const like(SYS_charset_t)
     D                                           options(*nopass)

      * ************************************************************************
      *  SYS_GenUUID(): Generate Universal Unique Identifier, DCE version 1
      *       specification compliant, for more info see IBM Support Portal
      *       for GENUUID.
      *
      *   UUID_DS   = (input) UUID data structure.
      *
      * Returns void.
      * ************************************************************************
     D SYS_GenUUID...
     D                 pr                  extpgm('GENUUID')
     D  UUID_DS                            const likeds(SYS_UUID_t)

      * ************************************************************************
      *  SYS_Convert_StringToHex(): Convert Character to Hex.
      *       For more info see IBM Support Portal for CVTCH.
      *
      *   Hex       = (output) Converted string in hex;
      *   String    = (input) Input string to convert;
      *   Len       = (input) Input length.
      *
      * Returns void.
      * ************************************************************************
     D SYS_Convert_StringToHex...
     D                 pr                  extproc('cvtch')
     D  hex                                const like(SYS_varying_hex_t)
     D  string                             const like(SYS_varying_t)
     D  len                                const like(SYS_size_t)

      * ************************************************************************
      *  SYS_Convert_HexToString(): Convert Hex to Character.
      *       For more info see IBM Support Portal for CVTHC.
      *
      *   String    = (output) Converted string;
      *   Hex       = (input) Input string in hex to convert;
      *   Len       = (input) Input length.
      *
      * Returns void.
      * ************************************************************************
     D SYS_Convert_HexToString...
     D                 pr                  extproc('cvthc')
     D  string                             const like(SYS_varying_t)
     D  hex                                const like(SYS_varying_hex_t)
     D  len                                const like(SYS_size_t)

