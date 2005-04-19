package YaPI::HTTPDModules;
%modules = (
    'access' => {
                    summary   => 'Provides access control based on client host name, IP address, etc.',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 10
    },
    'actions' => {
                    summary   => 'Executing CGI scripts based on media type or request method',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 20
    },
    'alias' => {
                    summary   => 'Mapping different parts of the host file system in the document tree and for URL redirection',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 30
    },
    'auth' => {
                    summary   => 'User authentication using text files',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 40
    },
    'auth_dbm' => {
                    summary   => 'Provides for user authentication using DBM files',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 50,
                    module    => {
                                    AuthDBMAuthoritative => 'mod_auth_dbm',
                                    AuthDBMGroupFile => 'mod_auth_dbm',
                                    AuthDBMType => 'mod_auth_dbm',
                                    AuthDBMUserFile => 'mod_auth_dbm'
                    }
    },
    'autoindex' => {
                    summary   => 'Generates directory indices, automatically, similar to the Unix ls command',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 60
    },
    'cgi' => {
                    summary   => 'Execution of CGI scripts',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 70
    },
    'dir' => {
                    summary   => 'Provides for "trailing slash" redirects and serving directory index files',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 80
    },
    'env' => {
                    summary   => 'Modifies the environment passed to CGI scripts and SSI pages',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 90
    },
    'expires' => {
                    summary   => 'Generation of Expires HTTP headers according to user-specified criteria',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 100,
                    module    => {
                                    ExpiresActive  => 'mod_expires',
                                    ExpiresByType  => 'mod_expires',
                                    ExpiresDefault => 'mod_expires'
                    }
    },
    'include' => {
                    summary   => 'Server-parsed HTML documents (Server Side Includes)',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 110
    },
    'log_config' => {
                    summary   => 'Logging of the requests made to the server',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 120
    },
    'mime' => {
                    summary   => 'Associates the requested file name\'s extensions with the file\'s behavior and content',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 130
    },
    'negotiation' => {
                    summary   => 'Provides for content negotiation',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 140
    },
    'setenvif' => {
                    summary   => 'Allows the setting of environment variables based on characteristics of the request',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 150
    },
    'status' => {
                    summary   => 'Provides information about server activity and performance',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 160
    },
    'suexec' => {
                    summary   => 'Allows CGI scripts to run as a specified user and group',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 0,
                    module    => {
                                    SuexecUserGroup => 'mod_suexec',
                    }
    },
    'userdir' => {
                    summary   => 'User-specific directories',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 180
    },
    'asis' => {
                    summary   => 'Sends files that contain their own HTTP headers',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 190
    },
    'auth_anon' => {
                    summary   => 'Allows "anonymous" user access to authenticated areas',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 200,
                    module    => { 
                                    Anonymous => 'mod_auth_anon',
                                    Anonymous_Authoritative => 'mod_auth_anon',
                                    Anonymous_LogEmail => 'mod_auth_anon',
                                    Anonymous_MustGiveEmail => 'mod_auth_anon',
                                    Anonymous_NoUserID => 'mod_auth_anon',
                                    Anonymous_VerifyEmail => 'mod_auth_anon'
                    }
    },
    'auth_digest' => {
                    summary   => 'User authentication using MD5 Digest Authentication',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 210
    },
    'auth_ldap' => {
                    summary   => 'Allows an LDAP directory to be used to store the database for HTTP Basic authentication',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 355
    },
    'cache' => {
                    summary   => 'Content cache keyed to URIs',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 230
    },
    'charset_lite' => {
                    summary   => 'Specify character set translation or recoding',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 240
    },
    'dav' => {
                    summary   => 'Distributed Authoring and Versioning (WebDAV) functionality',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 250,
                    module    => {
                                  Dav => 'mod_dav',
                                  DavDepthInfinity => 'mod_dav',
                                  DavMinTimeout => 'mod_dav'
                    }
    },
    'dav_fs' => {
                    summary   => 'File system provider for mod_dav',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 260,
                    module    => {
                                  DavLockDB => 'mod_dav_fs'
                    }
    },
    'deflate' => {
                    summary   => 'Compress content before it is delivered to the client',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 270,
                    module    => {
                                  DeflateBufferSize => 'mod_deflate',
                                  DeflateCompressionLevel => 'mod_deflate',
                                  DeflateFilterNote => 'mod_deflate',
                                  DeflateMemLevel => 'mod_deflate',
                                  DeflateWindowSize => 'mod_deflate'
                    }
    },
    'disk_cache' => {
                    summary   => 'Content cache storage manager keyed to URIs',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 280
    },
    'echo' => {
                    summary   => 'A simple echo server to illustrate protocol modules',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 290
    },
    'ext_filter' => {
                    summary   => 'Pass the response body through an external program before delivery to the client',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 300,
                    module    => {
                                    ExtFilterDefine  => 'mod_ext_filter',
                                    ExtFilterOptions => 'mod_ext_filter',
                    }
    },
    'file_cache' => {
                    summary   => 'Caches a static list of files in memory',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 310
    },
    'headers' => {
                    summary   => 'Customization of HTTP request and response headers',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 320,
                    module    => {
                                    Header => 'mod_headers',
                                    RequestHeader => 'mod_headers'
                    }
    },
    'imap' => {
                    summary   => 'Server-side image map processing',
                    packages  => [],
                    default   => 1,
                    required  => 0,
                    suggested => 0,
                    position  => 330
    },
    'info' => {
                    summary   => 'Provides a comprehensive overview of the server configuration',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 340,
                    module    => { AddModuleInfo => 'mod_info' }
    },
    'ldap' => {
                    summary   => 'LDAP connection pooling and result caching services for use by other LDAP modules',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 350
    },
    'logio' => {
                    summary   => 'Logging of input and output bytes per request',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 360
    },
    'mem_cache' => {
                    summary   => 'Content cache keyed to URIs',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 370
    },
    'mime_magic' => {
                    summary   => 'Determines the MIME type of a file by looking at a few bytes of its contents',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 380,
                    module    => { MimeMagicFile => 'mod_mime_magic' }
    },
    'proxy' => {
                    summary   => 'HTTP/1.1 proxy/gateway server',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 390,
                    module    => { 
                                    NoProxy => 'mod_proxy',
                                    ProxyBadHeader => 'mod_proxy',
                                    ProxyBlock => 'mod_proxy',
                                    ProxyDomain => 'mod_proxy',
                                    ProxyErrorOverride => 'mod_proxy',
                                    ProxyIOBufferSize => 'mod_proxy',
                                    ProxyMaxForwards => 'mod_proxy',
                                    ProxyPass => 'mod_proxy',
                                    ProxyPassReverse => 'mod_proxy',
                                    ProxyPreserveHost => 'mod_proxy',
                                    ProxyReceiveBufferSize => 'mod_proxy',
                                    ProxyRemote => 'mod_proxy',
                                    ProxyRemoteMatch => 'mod_proxy',
                                    ProxyRequests => 'mod_proxy',
                                    ProxyTimeout => 'mod_proxy',
                                    ProxyVia => 'mod_proxy'
                    }
    },
    'proxy_connect' => {
                    summary   => 'mod_proxy extension for CONNECT request handling',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 400,
                    module    => { AllowCONNECT => 'mod_proxy_connect' }
    },
    'proxy_ftp' => {
                    summary   => 'FTP support module for mod_proxy',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 410
    },
    'proxy_http' => {
                    summary   => 'HTTP support module for mod_proxy',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 420
    },
    'rewrite' => {
                    summary   => 'Provides a rule-based rewriting engine to rewrite requested URLs on the fly',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 430,
                    module    => {
                                    RewriteBase => 'mod_rewrite',
                                    RewriteCond => 'mod_rewrite',
                                    RewriteEngine => 'mod_rewrite',
                                    RewriteLock => 'mod_rewrite',
                                    RewriteLog => 'mod_rewrite',
                                    RewriteLogLevel => 'mod_rewrite',
                                    RewriteMap => 'mod_rewrite',
                                    RewriteOptions => 'mod_rewrite',
                                    RewriteRule => 'mod_rewrite'
                    }
    },
    'speling' => {
                    summary   => 'Attempts to correct mistaken URLs that users might have entered',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 440,
                    module    => { CheckSpelling => 'mod_speling' }
    },
    'ssl' => {
                    summary   => 'Strong cryptography using the Secure Sockets Layer (SSL) and Transport Layer Security (TLS) protocols',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 450,
                    defines   => {
                                  SSLEngine => 'SSL',
                                  SSLCACertificateFile => 'SSL',
                                  SSLCACertificatePath => 'SSL',
                                  SSLCARevocationFile => 'SSL',
                                  SSLCARevocationPath => 'SSL',
                                  SSLCertificateChainFile => 'SSL',
                                  SSLCertificateFile => 'SSL',
                                  SSLCertificateKeyFile => 'SSL',
                                  SSLCipherSuite => 'SSL',
                                  SSLMutex => 'SSL',
                                  SSLOptions => 'SSL',
                                  SSLPassPhraseDialog => 'SSL',
                                  SSLProtocol => 'SSL',
                                  SSLProxyCACertificateFile => 'SSL',
                                  SSLProxyCACertificatePath => 'SSL',
                                  SSLProxyCARevocationFile => 'SSL',
                                  SSLProxyCARevocationPath => 'SSL',
                                  SSLProxyCipherSuite => 'SSL',
                                  SSLProxyEngine => 'SSL',
                                  SSLProxyMachineCertificateFile => 'SSL',
                                  SSLProxyMachineCertificatePath => 'SSL',
                                  SSLProxyProtocol => 'SSL',
                                  SSLProxyVerify => 'SSL',
                                  SSLProxyVerifyDepth => 'SSL',
                                  SSLRandomSeed => 'SSL',
                                  SSLRequire => 'SSL',
                                  SSLRequireSSL => 'SSL',
                                  SSLSessionCache => 'SSL',
                                  SSLSessionCacheTimeout => 'SSL',
                                  SSLVerifyClient => 'SSL',
                                  SSLVerifyDepth => 'SSL'
                    }
    },
    'unique_id' => {
                    summary   => 'Provides an environment variable with a unique identifier for each request',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 460
    },
    'usertrack' => {
                    summary   => 'Clickstream logging of user activity on a site',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 470,
                    module    => {
                                  CookieDomain => 'mod_usertrack',
                                  CookieExpires => 'mod_usertrack',
                                  CookieName => 'mod_usertrack',
                                  CookieStyle => 'mod_usertrack',
                                  CookieTracking => 'mod_usertrack'
                    }
    },
    'vhost_alias' => {
                    summary   => 'Provides support for dynamically configured mass virtual hosting',
                    packages  => [],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 480,
                    module    => {
                                    VirtualDocumentRoot => 'mod_vhost_alias',
                                    VirtualDocumentRootIP => 'mod_vhost_alias',
                                    VirtualScriptAlias => 'mod_vhost_alias',
                                    VirtualScriptAliasIP => 'mod_vhost_alias'
                    }
    },
    'php4' => {
                    summary   => 'Provides support for PHP4 dynamically generated pages',
                    packages  => ["apache2-mod_php4"],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 490
    },
    'php5' => {
                    summary   => 'Provides support for PHP4 dynamically generated pages',
                    packages  => ["apache2-mod_php5"],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 490
    },
    'perl' => {
                    summary   => 'Provides support for Perl dynamically generated pages',
                    packages  => ["apache2-mod_perl"],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 500
    },
    'python' => {
                    summary   => 'Provides support for Python dynamically generated pages',
                    packages  => ["apache2-mod_python"],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 510
    },
    'ruby' => {
                    summary   => 'Provides support for Ruby dynamically generated pages',
                    packages  => ["apache2-mod_ruby"],
                    default   => 0,
                    required  => 0,
                    suggested => 0,
                    position  => 520
    }
);


%selection = (
    TestSel => {
                summary => 'A test selection',
                modules => [ "m1", "m2", "m3" ],
                default => 0
    }
);
